# Generated from default/object.tt
package Paws::CodeDeploy::InstanceTarget;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_LifecycleEvent/;
  has DeploymentId => (is => 'ro', isa => Str);
  has InstanceLabel => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has LifecycleEvents => (is => 'ro', isa => ArrayRef[CodeDeploy_LifecycleEvent]);
  has Status => (is => 'ro', isa => Str);
  has TargetArn => (is => 'ro', isa => Str);
  has TargetId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceLabel' => {
                                    'type' => 'Str'
                                  },
               'TargetArn' => {
                                'type' => 'Str'
                              },
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               'LifecycleEvents' => {
                                      'type' => 'ArrayRef[CodeDeploy_LifecycleEvent]',
                                      'class' => 'Paws::CodeDeploy::LifecycleEvent'
                                    },
               'TargetId' => {
                               'type' => 'Str'
                             },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'DeploymentId' => 'deploymentId',
                       'TargetArn' => 'targetArn',
                       'InstanceLabel' => 'instanceLabel',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'TargetId' => 'targetId',
                       'LifecycleEvents' => 'lifecycleEvents'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::InstanceTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::InstanceTarget object:

  $service_obj->Method(Att1 => { DeploymentId => $value, ..., TargetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::InstanceTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentId

=head1 DESCRIPTION

A target Amazon EC2 or on-premises instance during a deployment that
uses the EC2/On-premises compute platform.

=head1 ATTRIBUTES


=head2 DeploymentId => Str

  The unique ID of a deployment.


=head2 InstanceLabel => Str

  A label that identifies whether the instance is an original target
(C<BLUE>) or a replacement target (C<GREEN>).


=head2 LastUpdatedAt => Str

  The date and time when the target instance was updated by a deployment.


=head2 LifecycleEvents => ArrayRef[CodeDeploy_LifecycleEvent]

  The lifecycle events of the deployment to this target instance.


=head2 Status => Str

  The status an EC2/On-premises deployment's target instance.


=head2 TargetArn => Str

  The ARN of the target.


=head2 TargetId => Str

  The unique ID of a deployment target that has a type of
C<instanceTarget>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

