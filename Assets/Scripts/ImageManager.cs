using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class ImageMapping
{
    public string ImageName;
    public Sprite sprite;
    public ImageOrientation orientation;
}


public class ImageManager : MonoBehaviour
{

    public List<ImageMapping> Images;

    public ImageMapping GetImage(string name)
    {
        if (Images != null)
        {
            ImageMapping im = Images.Find(x => System.String.Equals(x.ImageName, name, System.StringComparison.OrdinalIgnoreCase));
            if (im != null)
            {
                return im;
            }
            else
            {
                Debug.LogError("No image named " + name + " found!");
                return null;
            }
        }
        return null;
    }

    void Initialize()
    {
    }

    /**
* This is boilerplate Singleton code for ensuring one and only one instance is active,
* and that the instance is created on first access if it does not exist.
**/

    static ImageManager mInstance;

    static public bool isActive
    {
        get
        {
            return mInstance != null;
        }
    }

    static public ImageManager instance
    {
        get
        {
            if (mInstance == null)
            {
                mInstance = UnityEngine.Object.FindObjectOfType(typeof(ImageManager)) as ImageManager;

                if (mInstance == null)
                {
                    Debug.LogWarning("Not able to find an instance of the Image Manager in the scene!");
                }
            }
            return mInstance;
        }
    }

    void OnDestroy()
    {
        if (mInstance == this)
        {
            mInstance = null;
        }
    }



    void Awake()
    {
        if (enabled)
        {
            if (mInstance == null || mInstance == this)
            {
                mInstance = this;
            }
            else
            {
                Debug.LogWarning("Another Image Manager already exists (" + mInstance.gameObject + "), destroying " + gameObject, mInstance);
                DestroyImmediate(gameObject);
                return;
            }

            //Ensure that this object persists across scene loads
            DontDestroyOnLoad(this.gameObject);
        }
        else
        {
            Debug.LogWarning("This Image Manager is disabled (" + gameObject + "), destroying.");
            DestroyImmediate(gameObject);
        }
        Initialize();
    }
}
