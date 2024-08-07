using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.ARFoundation;
using UnityEngine.XR.ARSubsystems;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class BasePlacement : MonoBehaviour
{
    [SerializeField]
    ARSessionOrigin arOrigin;
    private BaseConfig planeSetScript;
    public Button resetButton;
    public Button submitButton;
    public Button MovePhonePrompt;

    private void Awake()
    {
        planeSetScript = arOrigin.GetComponent<BaseConfig>();
    }

    // Update is called once per frame
    void Update()
    {
        if (!planeSetScript.getIsPermanentlySetPose()) {
            resetButton.enabled = false;
            resetButton.interactable = false;
            resetButton.gameObject.SetActive(false);
            submitButton.enabled = false;
            submitButton.interactable = false;
            submitButton.gameObject.SetActive(false);
        } else {
            resetButton.interactable = true;
            resetButton.enabled = true;
            resetButton.gameObject.SetActive(true);
            submitButton.interactable = true;
            submitButton.enabled = true;
            submitButton.gameObject.SetActive(true);
        }

        if (!planeSetScript.isSetValidPose()) {
            MovePhonePrompt.gameObject.SetActive(true);
        } else {
            MovePhonePrompt.gameObject.SetActive(false);
        }
    }
}
