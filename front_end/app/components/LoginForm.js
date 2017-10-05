import React, { Component } from 'react';
import { View, Text } from 'react-native';
import axios from 'axios';
import { Button, Card, CardSection, Input } from './common';
import RegistrationForm from './RegistrationForm';

class LoginForm extends Component {
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
          console.log(response)
        if (response.data.status === 'SUCCESS') {
          navigate('Search', { accessToken: response.data.accessToken });
        } else { console.log(response)
          this.setState({ errors: response.data.errors });
        }
      })
      .catch(error => console.log(error));
  }

    // axios.post('http://localhost:3000/api/login', { email, password })
    //   .then(response =>
    //     navigate('Search', { accessToken: response.data.accessToken }))
    //   .catch(error => console.log(error));
    // }

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
            <Button onPress={() => navigate('RegistrationForm')}>
              Register
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
