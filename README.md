This repo is a centralized place to put all proto related files for the given project. 

This includes the generated code that should be imported from this repo instead of copy-pasting and generating over multiple repos.

Make sure to set Protocol Buffers Import Path to Project Root.
![img.png](assets/pb_import.png)
Otherwise, the proto files will not be able to import each other.

Use the Makefile to generate/update the proto files:
That is, in the terminal at project root write `make proto`

Protocol Buffers Docs: https://protobuf.dev/

gRPC Docs: https://grpc.io/docs/what-is-grpc/core-concepts/

Use [Kreya](https://kreya.app/) while waiting for Postman to get a proper take on gRPC.

<details><summary>How To Use Kreya</summary>
<p>

Click Create Projects.\
![img.png](assets/img.png)

Click Select Location.\
![img_1.png](assets/img_1.png)

Select a directory where you want to keep your Kreya projects.\
![img_2.png](assets/img_2.png)

Fill in the remaining fields. Please note the Full project path at the bottom.\
Click Create.\
![img_3.png](assets/img_3.png)

Choose "gRCP proto files", then click "Add proto directory".\
![img_4.png](assets/img_4.png)

Select the project root where you keep the proto files, then click Save.\
![img_5.png](assets/img_5.png)

Kreya should now have imported any proto files it found, see the picture.\
![img_6.png](assets/img_6.png)

Now you need to add an environment. Let's start with one for local development.\
Select Project > Environments from the menu bar.\
![img_7.png](assets/img_7.png)

Click "New environment" and then in the General tab name it Local.\
![img_8.png](assets/img_8.png)

Now click the Data tab. This is where you'll store variables in a JSON.\
Here's an example of two different variables that we'll shortly.\
Click Save, then Click Back in the top right corner.\
![img_9.png](assets/img_9.png)

Select the topmost directory, here "payment".\
Click the drop-down for default settings and choose "Local".\
Then select the "Endpoint" box and fill in as shown in the picture.\
This is how you use the variables from the environment.\
![img_10.png](assets/img_10.png)

Do the same for the "shop" directory, but this time using the {{gateway}} variable.\
![img_11.png](assets/img_11.png)

`That's it! You should now be able to send gRPC requests!`

</p>
</details>