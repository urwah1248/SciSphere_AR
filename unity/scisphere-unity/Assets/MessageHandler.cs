using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FlutterUnityIntegration;

public class FlutterUnityInterface : MonoBehaviour
{
  // Start is called before the first frame update
  void Start()
  {

    // Add UnityMessageManager as a GameObject
    GameObject unityMessageManager = new GameObject("UnityMessageManager");
    unityMessageManager.AddComponent<UnityMessageManager>();
    DontDestroyOnLoad(unityMessageManager);
  }

  // Update is called once per frame
  void OnMessage(string message)
  {
    int viewIndex;
    if (int.TryParse(message, out viewIndex))
    {
      FindObjectOfType<AppManager>().MoveToView(viewIndex);
    }
  }
}
