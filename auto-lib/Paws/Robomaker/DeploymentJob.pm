# Generated from default/object.tt
package Paws::Robomaker::DeploymentJob;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_DeploymentConfig Robomaker_DeploymentApplicationConfig/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has DeploymentApplicationConfigs => (is => 'ro', isa => ArrayRef[Robomaker_DeploymentApplicationConfig]);
  has DeploymentConfig => (is => 'ro', isa => Robomaker_DeploymentConfig);
  has FailureCode => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has Fleet => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentConfig' => {
                                       'class' => 'Paws::Robomaker::DeploymentConfig',
                                       'type' => 'Robomaker_DeploymentConfig'
                                     },
               'Fleet' => {
                            'type' => 'Str'
                          },
               'Status' => {
                             'type' => 'Str'
                           },
               'DeploymentApplicationConfigs' => {
                                                   'class' => 'Paws::Robomaker::DeploymentApplicationConfig',
                                                   'type' => 'ArrayRef[Robomaker_DeploymentApplicationConfig]'
                                                 },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'FailureCode' => {
                                  'type' => 'Str'
                                },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'DeploymentConfig' => 'deploymentConfig',
                       'Fleet' => 'fleet',
                       'Status' => 'status',
                       'DeploymentApplicationConfigs' => 'deploymentApplicationConfigs',
                       'CreatedAt' => 'createdAt',
                       'FailureCode' => 'failureCode',
                       'FailureReason' => 'failureReason',
                       'Arn' => 'arn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DeploymentJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::DeploymentJob object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::DeploymentJob object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a deployment job.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the deployment job.


=head2 CreatedAt => Str

  The time, in milliseconds since the epoch, when the deployment job was
created.


=head2 DeploymentApplicationConfigs => ArrayRef[Robomaker_DeploymentApplicationConfig]

  The deployment application configuration.


=head2 DeploymentConfig => Robomaker_DeploymentConfig

  The deployment configuration.


=head2 FailureCode => Str

  The deployment job failure code.


=head2 FailureReason => Str

  A short description of the reason why the deployment job failed.


=head2 Fleet => Str

  The Amazon Resource Name (ARN) of the fleet.


=head2 Status => Str

  The status of the deployment job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

