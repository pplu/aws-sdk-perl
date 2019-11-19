# Generated from json/callargs_class.tt

package Paws::OpsWorks::CreateApp;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::OpsWorks::Types qw/OpsWorks_DataSource OpsWorks_SslConfiguration OpsWorks_Source OpsWorks_EnvironmentVariable OpsWorks_AppAttributes/;
  has AppSource => (is => 'ro', isa => OpsWorks_Source, predicate => 1);
  has Attributes => (is => 'ro', isa => OpsWorks_AppAttributes, predicate => 1);
  has DataSources => (is => 'ro', isa => ArrayRef[OpsWorks_DataSource], predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Domains => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has EnableSsl => (is => 'ro', isa => Bool, predicate => 1);
  has Environment => (is => 'ro', isa => ArrayRef[OpsWorks_EnvironmentVariable], predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Shortname => (is => 'ro', isa => Str, predicate => 1);
  has SslConfiguration => (is => 'ro', isa => OpsWorks_SslConfiguration, predicate => 1);
  has StackId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Type => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateApp');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::OpsWorks::CreateAppResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Type' => 1,
                    'StackId' => 1,
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'DataSources' => {
                                  'type' => 'ArrayRef[OpsWorks_DataSource]',
                                  'class' => 'Paws::OpsWorks::DataSource'
                                },
               'Attributes' => {
                                 'class' => 'Paws::OpsWorks::AppAttributes',
                                 'type' => 'OpsWorks_AppAttributes'
                               },
               'Environment' => {
                                  'class' => 'Paws::OpsWorks::EnvironmentVariable',
                                  'type' => 'ArrayRef[OpsWorks_EnvironmentVariable]'
                                },
               'SslConfiguration' => {
                                       'type' => 'OpsWorks_SslConfiguration',
                                       'class' => 'Paws::OpsWorks::SslConfiguration'
                                     },
               'EnableSsl' => {
                                'type' => 'Bool'
                              },
               'Domains' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'StackId' => {
                              'type' => 'Str'
                            },
               'AppSource' => {
                                'class' => 'Paws::OpsWorks::Source',
                                'type' => 'OpsWorks_Source'
                              },
               'Type' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Shortname' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateApp - Arguments for method CreateApp on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApp on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method CreateApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApp.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $CreateAppResult = $opsworks->CreateApp(
      Name      => 'MyString',
      StackId   => 'MyString',
      Type      => 'aws-flow-ruby',
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
      Shortname        => 'MyString',        # OPTIONAL
      SslConfiguration => {
        Certificate => 'MyString',
        PrivateKey  => 'MyString',
        Chain       => 'MyString',
      },                                     # OPTIONAL
    );

    # Results:
    my $AppId = $CreateAppResult->AppId;

    # Returns a L<Paws::OpsWorks::CreateAppResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/CreateApp>

=head1 ATTRIBUTES


=head2 AppSource => OpsWorks_Source

A C<Source> object that specifies the app repository.



=head2 Attributes => OpsWorks_AppAttributes

One or more user-defined key/value pairs to be added to the stack
attributes.



=head2 DataSources => ArrayRef[OpsWorks_DataSource]

The app's data source.



=head2 Description => Str

A description of the app.



=head2 Domains => ArrayRef[Str|Undef]

The app virtual host settings, with multiple domains separated by
commas. For example: C<'www.example.com, example.com'>



=head2 EnableSsl => Bool

Whether to enable SSL for the app.



=head2 Environment => ArrayRef[OpsWorks_EnvironmentVariable]

An array of C<EnvironmentVariable> objects that specify environment
variables to be associated with the app. After you deploy the app,
these variables are defined on the associated app server instance. For
more information, see Environment Variables
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment).

There is no specific limit on the number of environment variables.
However, the size of the associated data structure - which includes the
variables' names, values, and protected flag values - cannot exceed 20
KB. This limit should accommodate most if not all use cases. Exceeding
it will cause an exception with the message, "Environment: is too large
(maximum is 20KB)."

If you have specified one or more environment variables, you cannot
modify the stack's Chef version.



=head2 B<REQUIRED> Name => Str

The app name.



=head2 Shortname => Str

The app's short name.



=head2 SslConfiguration => OpsWorks_SslConfiguration

An C<SslConfiguration> object with the SSL configuration.



=head2 B<REQUIRED> StackId => Str

The stack ID.



=head2 B<REQUIRED> Type => Str

The app type. Each supported type is associated with a particular
layer. For example, PHP applications are associated with a PHP layer.
AWS OpsWorks Stacks deploys an application to those instances that are
members of the corresponding layer. If your app isn't one of the
standard types, or you prefer to implement your own Deploy recipes,
specify C<other>.

Valid values are: C<"aws-flow-ruby">, C<"java">, C<"rails">, C<"php">, C<"nodejs">, C<"static">, C<"other">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApp in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

