# Generated from default/object.tt
package Paws::Amplify::AutoBranchCreationConfig;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Amplify::Types qw/Amplify_EnvironmentVariables/;
  has BasicAuthCredentials => (is => 'ro', isa => Str);
  has BuildSpec => (is => 'ro', isa => Str);
  has EnableAutoBuild => (is => 'ro', isa => Bool);
  has EnableBasicAuth => (is => 'ro', isa => Bool);
  has EnvironmentVariables => (is => 'ro', isa => Amplify_EnvironmentVariables);
  has Framework => (is => 'ro', isa => Str);
  has Stage => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Framework' => {
                                'type' => 'Str'
                              },
               'BuildSpec' => {
                                'type' => 'Str'
                              },
               'BasicAuthCredentials' => {
                                           'type' => 'Str'
                                         },
               'EnvironmentVariables' => {
                                           'class' => 'Paws::Amplify::EnvironmentVariables',
                                           'type' => 'Amplify_EnvironmentVariables'
                                         },
               'EnableBasicAuth' => {
                                      'type' => 'Bool'
                                    },
               'Stage' => {
                            'type' => 'Str'
                          },
               'EnableAutoBuild' => {
                                      'type' => 'Bool'
                                    }
             },
  'NameInRequest' => {
                       'Framework' => 'framework',
                       'BuildSpec' => 'buildSpec',
                       'BasicAuthCredentials' => 'basicAuthCredentials',
                       'EnvironmentVariables' => 'environmentVariables',
                       'EnableBasicAuth' => 'enableBasicAuth',
                       'Stage' => 'stage',
                       'EnableAutoBuild' => 'enableAutoBuild'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::AutoBranchCreationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::AutoBranchCreationConfig object:

  $service_obj->Method(Att1 => { BasicAuthCredentials => $value, ..., Stage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::AutoBranchCreationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->BasicAuthCredentials

=head1 DESCRIPTION

Structure with auto branch creation config.

=head1 ATTRIBUTES


=head2 BasicAuthCredentials => Str

  Basic Authorization credentials for the auto created branch.


=head2 BuildSpec => Str

  BuildSpec for the auto created branch.


=head2 EnableAutoBuild => Bool

  Enables auto building for the auto created branch.


=head2 EnableBasicAuth => Bool

  Enables Basic Auth for the auto created branch.


=head2 EnvironmentVariables => Amplify_EnvironmentVariables

  Environment Variables for the auto created branch.


=head2 Framework => Str

  Framework for the auto created branch.


=head2 Stage => Str

  Stage for the auto created branch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

