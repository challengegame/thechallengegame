using UnityEngine;
using UnityEngine.UI;

public class ImageMessageUI : MessageUI
{
    public Image image;

    public ImageOrientation orientation;

    public void CloseExpandedPanel()
    {
        DisplayManager.instance.CloseImagePanel();
    }

    public void ExpandImage()
    {
        if (orientation == ImageOrientation.LANDSCAPE)
        {
            DisplayManager.instance.ShowLandscapeImage(image.sprite);
        }
        else
        {
            DisplayManager.instance.ShowPortraitImage(image.sprite);
        }
    }

}
