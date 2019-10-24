# Generated from json/callargs_class.tt

package Paws::OpsWorks::UpdateApp;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::OpsWorks::Types qw/OpsWorks_AppAttributes OpsWorks_Source OpsWorks_EnvironmentVariable OpsWorks_SslConfiguration OpsWorks_DataSource/;
  has AppId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AppSource => (is => 'ro', isa => OpsWorks_Source, predicate => 1);
  has Attributes => (is => 'ro', isa => OpsWorks_AppAttributes, predicate => 1);
  has DataSources => (is => 'ro', isa => ArrayRef[OpsWorks_DataSource], predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Domains => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has EnableSsl => (is => 'ro', isa => Bool, predicate => 1);
  has Environment => (is => 'ro', isa => ArrayRef[OpsWorks_EnvironmentVariable], predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has SslConfiguration => (is => 'ro', isa => OpsWorks_SslConfiguration, predicate => 1);
  has Type => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateApp');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Environment' => {
                                  'class' => 'Paws::OpsWorks::EnvironmentVariable',
                                  'type' => 'ArrayRef[OpsWorks_EnvironmentVariable]'
                                },
               'Domains' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'SslConfiguration' => {
                                       'class' => 'Paws::OpsWorks::SslConfiguration',
                                       'type' => 'OpsWorks_SslConfiguration'
                                     },
               'Type' => {
                           'type' => 'Str'
                         },
               'Attributes' => {
                                 'class' => 'Paws::OpsWorks::AppAttributes',
                                 'type' => 'OpsWorks_AppAttributes'
                               },
               'DataSources' => {
                                  'class' => 'Paws::OpsWorks::DataSource',
                                  'type' => 'ArrayRef[OpsWorks_DataSource]'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'AppSource' => {
                                'class' => 'Paws::OpsWorks::Source',
                                'type' => 'OpsWorks_Source'
                              },
               'Description' => {
                                  'type' => 'Str'
                                },
               'EnableSsl' => {
                                'type' => 'Bool'
                              },
               'AppId' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'AppId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::UpdateApp - Arguments for method UpdateApp on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApp on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method UpdateApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApp.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    $opsworks->UpdateApp(
      AppId     => 'MyString',
      AppSource => {
        Password => 'MyString',
        Revision => 'MyString',
        SshKey   => 'MyString',
        Type     => 'git',        # values: git, svn, archive, s3; OPTIONAL
        Url      => 'MyString',
        Username => 'MyString',
      },    # OPTIONAL
      Attributes => {
        'DocumentRoot' => 'MyString'
        , # key: values: DocumentRoot, RailsEnv, AutoBundleOnDeploy, AwsFlowRubySettings
      },    # OPTIONAL
      DataSources => [
        {
          Arn          => 'MyString',
          DatabaseName => 'MyString',
          Type         => 'MyString',
        },
        ...
      ],    # OPTIONAL
      Description => 'MyString',             # OPTIONAL
      Domains     => [ 'MyString', ... ],    # OPTIONAL
      EnableSsl   => 1,                      # OPTIONAL
      Environment => [
        {
          Key    => 'MyString',
          Value  => 'MyString',
          Secure => 1,
        },
        ...
      ],                                     # OPTIONAL
      Name             => 'MyString',        # OPTIONAL
      SslConfiguration => {
        Certificate => 'MyString',
        PrivateKey  => 'MyString',
        Chain       => 'MyString',
      },                                     # OPTIONAL
      Type => 'aws-flow-ruby',               # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/UpdateApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 AppSource => OpsWorks_Source

A C<Source> object that specifies the app repository.



=head2 Attributes => OpsWorks_AppAttributes

One or more user-defined key/value pairs to be added to the stack
attributes.



=head2 DataSources => ArrayRef[OpsWorks_DataSource]

The app's data sources.



=head2 Description => Str

A description of the app.



=head2 Domains => ArrayRef[Str|Undef]

The app's virtual host settings, with multiple domains separated by
commas. For example: C<'www.example.com, example.com'>



=head2 EnableSsl => Bool

Whether SSL is enabled for the app.



=head2 Environment => ArrayRef[OpsWorks_EnvironmentVariable]

An array of C<EnvironmentVariable> objects that specify environment
variables to be associated with the app. After you deploy the app,
these variables are defined on the associated app server instances.For
more information, see Environment Variables
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment).

There is no specific limit on the number of environment variables.
However, the size of the associated data structure - which includes the
variables' names, values, and protected flag values - cannot exceed 20
KB. This limit should accommodate most if not all use cases. Exceeding
it will cause an exception with the message, "Environment: is too large
(maximum is 20 KB)."

If you have specified one or more environment variables, you cannot
modify the stack's Chef version.



=head2 Name => Str

The app name.



=head2 SslConfiguration => OpsWorks_SslConfiguration

An C<SslConfiguration> object with the SSL configuration.



=head2 Type => Str

The app type.

Valid values are: C<"aws-flow-ruby">, C<"java">, C<"rails">, C<"php">, C<"nodejs">, C<"static">, C<"other">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApp in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

