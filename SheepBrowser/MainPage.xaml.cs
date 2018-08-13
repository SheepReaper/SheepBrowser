using System;
using Windows.UI.Xaml.Controls;

// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=402352&clcid=0x409

namespace SheepReaper.UWP.Browser
{
    /// <inheritdoc cref="Page" />
    /// <summary>
    ///     An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class MainPage
    {
        public MainPage()
        {
            InitializeComponent();
            Browser.Navigate(new Uri("https://www.google.com"));
        }

        private void AppBarButton_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {

        }

        private void CommandBar_Opening(object sender, object e)
        {
        }

        private void CommandBar_Opened(object sender, object e)
        {
            this.Grid.UpdateLayout();

        }
    }
}