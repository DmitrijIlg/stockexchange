class Result extends React.Component {
  constructor(props) {
    super(props);
    this.state = {bitstamp: this.props.data.bitstamp,
                  bitfinex: this.props.data.bitfinex}
  }

  componentDidMount(){
    this.timer = setInterval(this.tick.bind(this), 60000);
  }

  componentWillUnmount(){
      clearInterval(this.tick);
  }

  tick(){
    $.ajax({
      url: '/',
      method: 'GET',
      dataType: 'JSON',
      success: (data) => {
        this.setState({
          bitstamp: data.bitstamp,
          bitfinex: data.bitfinex
        });
        console.log(data);
      }
    });
  }

  render () {
    return (
      <table>
        <thead>
          <tr>
            <th>Exchange</th>
            <th>BTC</th> 
            <th>LTC</th>
            <th>ETH</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Bitstamp</td>
            <td>{this.state.bitstamp.btcusd}</td>
            <td>{this.state.bitstamp.ltcusd}</td>
            <td>{this.state.bitstamp.ethusd}</td>
          </tr>
          <tr>
            <td>Bitfinex</td>
            <td>{this.state.bitfinex.btcusd}</td>
            <td>{this.state.bitfinex.ltcusd}</td>
            <td>{this.state.bitfinex.ethusd}</td>
          </tr>
        </tbody>
      </table>
    );
  }
}
