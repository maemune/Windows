<h1>Windows VPN 自動設定</h1>
<p>WindowsのVPN接続設定を自動化しています。</p>

<h2>仕様説明</h2>
<p>実行時に管理者権限かどうかを確認し、もし管理者出ない場合PowerShellを使用し管理者権限のCMDを起動します。</p>
<p>VPNの接続設定にはPowerShellのAdd-VpnConnectionを使用し、あらかじめオプションを設定しておくことで入力の手間を省いています。</p>

<h2>使用方法</h2>
<p>VPN_Create.batをダウンロード後、実行</p>
<p>.</p>
<h3>タスクバーから接続する方法</h3>
<p>タスクバーにあるネットワークアイコンをクリックし'VPN'を表示します。</p>
<p>新たに追加されたVPN接続先に接続します。</p>
<p>ログインアカウントの入力を求められますので、事前に作成されたアカウント情報を入力します。</p>
<p>.</p>
<h3>設定から接続する方法</h3>
<p>'設定<ネットワークとインターネット'"<"'VPN'に新たに追加されたVPNが表示されます。</p>
<p>'接続'を押すとログインアカウントの入力を求められますので、事前に作成されたアカウント情報を入力します。</p>
