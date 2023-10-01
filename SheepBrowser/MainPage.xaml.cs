namespace SheepBrowser;

public partial class MainPage : ContentPage
{
	public MainPage()
	{
		InitializeComponent();
		
		// Browser.Navigate(new Uri("https://www.google.com"));
	}

	private void CommandBar_Opened(object sender, object e)
	{
		// this.Grid.UpdateLayout();
	}
}
