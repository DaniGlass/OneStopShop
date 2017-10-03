import React, { Component } from 'react';
import { View, Text } from 'react-native';
import axios from 'axios';
import { Button, Card, CardSection, Input } from './common';

class RegistrationForm extends Component {
  static navigationOptions = ({ navigation }) => ({
    // getButts(navigation.state.params.butts),
    title: 'Register',
  });

  constructor(props) {
    super();
    this.state = {
      username: '',
      email: '',
      password: '',
      errors: [],
    };
    this.onButtonPress = this.onButtonPress.bind(this);
  }

  onButtonPress() {
    const { username, email, password } = this.state;
    const { navigate } = this.props.navigation;

    axios.post('http://localhost:3000/api/users', { username, email, password })
      .then(response => {
        if (response.data.status === 'SUCCESS') {
          navigate('Map', { accessToken: response.data.accessToken });
        } else {
          this.setState({ errors: response.data.errors });
        }
      })
      .catch(error => console.log(error));
  }

  render() {
    return (
      <View>
        <Card>
          <CardSection>
            <Input
            placeholder="username"
            label="Username"
            value={this.state.username}
            onChangeText={username => this.setState({ username })}
            />
          </CardSection>

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
            {this.state.errors.map((error) => {
              return <Text key={error} style={styles.errorTextStyle}>{error}</Text>;
            })}
          </CardSection>

          <CardSection>
            <Button onPress={this.onButtonPress}>
              Register
            </Button>

          </CardSection>
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

export default RegistrationForm;