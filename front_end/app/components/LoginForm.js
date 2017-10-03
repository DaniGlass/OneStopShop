import React, { Component } from 'react';
import { View, Text } from 'react-native';
import axios from 'axios';
import { Button, Card, CardSection, Input } from './common';

class LoginForm extends Component {
  static navigationOptions = {
    title: 'Login'
  }
  constructor() {
    super();
    this.state = {
      email: '',
      passsword: '',
      errors: [],
    };

    this.onButtonPress = this.onButtonPress.bind(this);
  }

  onButtonPress() {
    const { email, password } = this.state;
    const { navigate } = this.props.navigation;

    axios.post('http://localhost:3000/api/login', { email, password })
      .then(response => {
        console.log(response);
        if (response.data.status === 'SUCCESS') {
          navigate('Map', { accessToken: response.data.accessToken });
        } else {
          this.setState({ errors: response.data.errors });
        }
      })
      .catch(error => console.log(error));
  }

  render() {
    const { navigate } = this.props.navigation;


    return (
      <View>
        <Card>
          <CardSection>
            <Input
            placeholder="user@email.com"
            label="Email"
            value={this.state.email}
            onChangeText={email => this.setState({ email })}
            />
          </CardSection>

          <CardSection>
            <Input
            secureTextEntry
            placeholder="password"
            label="Password"
            value={this.state.password}
            onChangeText={password => this.setState({ password })}
            />
          </CardSection>


          <CardSection>
            <Button onPress={this.onButtonPress}>
              Login
            </Button>
          </CardSection>

          <CardSection>
            <Button onPress={() => navigate('Register')}>
              Register now
            </Button>
          </CardSection>

          <CardSection>
            <Button onPress={() => navigate('Map', { accessToken: '' })}>
              Continue as a guest
            </Button>
          </CardSection>

            {this.state.errors.map((error) => {
              return <Text key={error} style={styles.errorTextStyle}>{error}</Text>;
            })}
        </Card>
      </View>
    );
  }
}


const styles = {
  errorTextStyle: {
    fontSize: 20,
    alignSelf: 'center',
    color: 'red'
  }
};

export default LoginForm;