# Generated from default/object.tt
package Paws::OpsWorks::App;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::OpsWorks::Types qw/OpsWorks_AppAttributes OpsWorks_EnvironmentVariable OpsWorks_Source OpsWorks_DataSource OpsWorks_SslConfiguration/;
  has AppId => (is => 'ro', isa => Str);
  has AppSource => (is => 'ro', isa => OpsWorks_Source);
  has Attributes => (is => 'ro', isa => OpsWorks_AppAttributes);
  has CreatedAt => (is => 'ro', isa => Str);
  has DataSources => (is => 'ro', isa => ArrayRef[OpsWorks_DataSource]);
  has Description => (is => 'ro', isa => Str);
  has Domains => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has EnableSsl => (is => 'ro', isa => Bool);
  has Environment => (is => 'ro', isa => ArrayRef[OpsWorks_EnvironmentVariable]);
  has Name => (is => 'ro', isa => Str);
  has Shortname => (is => 'ro', isa => Str);
  has SslConfiguration => (is => 'ro', isa => OpsWorks_SslConfiguration);
  has StackId => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AppId' => {
                            'type' => 'Str'
                          },
               'Attributes' => {
                                 'type' => 'OpsWorks_AppAttributes',
                                 'class' => 'Paws::OpsWorks::AppAttributes'
                               },
               'Environment' => {
                                  'class' => 'Paws::OpsWorks::EnvironmentVariable',
                                  'type' => 'ArrayRef[OpsWorks_EnvironmentVariable]'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'DataSources' => {
                                  'class' => 'Paws::OpsWorks::DataSource',
                                  'type' => 'ArrayRef[OpsWorks_DataSource]'
                                },
               'EnableSsl' => {
                                'type' => 'Bool'
                              },
               'Domains' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Type' => {
                           'type' => 'Str'
                         },
               'AppSource' => {
                                'type' => 'OpsWorks_Source',
                                'class' => 'Paws::OpsWorks::Source'
                              },
               'StackId' => {
                              'type' => 'Str'
                            },
               'Shortname' => {
                                'type' => 'Str'
                              },
               'Description' => {
                                  'type' => 'Str'
                                },
               'SslConfiguration' => {
                                       'type' => 'OpsWorks_SslConfiguration',
                                       'class' => 'Paws::OpsWorks::SslConfiguration'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::App

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::App object:

  $service_obj->Method(Att1 => { AppId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::App object:

  $result = $service_obj->Method(...);
  $result->Att1->AppId

=head1 DESCRIPTION

A description of the app.

=head1 ATTRIBUTES


=head2 AppId => Str

  The app ID.


=head2 AppSource => OpsWorks_Source

  A C<Source> object that describes the app repository.


=head2 Attributes => OpsWorks_AppAttributes

  The stack attributes.


=head2 CreatedAt => Str

  When the app was created.


=head2 DataSources => ArrayRef[OpsWorks_DataSource]

  The app's data sources.


=head2 Description => Str

  A description of the app.


=head2 Domains => ArrayRef[Str|Undef]

  The app vhost settings with multiple domains separated by commas. For
example: C<'www.example.com, example.com'>


=head2 EnableSsl => Bool

  Whether to enable SSL for the app.


=head2 Environment => ArrayRef[OpsWorks_EnvironmentVariable]

  An array of C<EnvironmentVariable> objects that specify environment
variables to be associated with the app. After you deploy the app,
these variables are defined on the associated app server instances. For
more information, see Environment Variables
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment).

There is no specific limit on the number of environment variables.
However, the size of the associated data structure - which includes the
variable names, values, and protected flag values - cannot exceed 20
KB. This limit should accommodate most if not all use cases, but if you
do exceed it, you will cause an exception (API) with an "Environment:
is too large (maximum is 20 KB)" message.


=head2 Name => Str

  The app name.


=head2 Shortname => Str

  The app's short name.


=head2 SslConfiguration => OpsWorks_SslConfiguration

  An C<SslConfiguration> object with the SSL configuration.


=head2 StackId => Str

  The app stack ID.


=head2 Type => Str

  The app type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

