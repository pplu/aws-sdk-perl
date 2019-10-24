# Generated from default/object.tt
package Paws::CodeDeploy::InstanceInfo;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_Tag/;
  has DeregisterTime => (is => 'ro', isa => Str);
  has IamSessionArn => (is => 'ro', isa => Str);
  has IamUserArn => (is => 'ro', isa => Str);
  has InstanceArn => (is => 'ro', isa => Str);
  has InstanceName => (is => 'ro', isa => Str);
  has RegisterTime => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[CodeDeploy_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegisterTime' => {
                                   'type' => 'Str'
                                 },
               'InstanceName' => {
                                   'type' => 'Str'
                                 },
               'DeregisterTime' => {
                                     'type' => 'Str'
                                   },
               'Tags' => {
                           'class' => 'Paws::CodeDeploy::Tag',
                           'type' => 'ArrayRef[CodeDeploy_Tag]'
                         },
               'IamSessionArn' => {
                                    'type' => 'Str'
                                  },
               'InstanceArn' => {
                                  'type' => 'Str'
                                },
               'IamUserArn' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'RegisterTime' => 'registerTime',
                       'InstanceName' => 'instanceName',
                       'DeregisterTime' => 'deregisterTime',
                       'Tags' => 'tags',
                       'IamSessionArn' => 'iamSessionArn',
                       'InstanceArn' => 'instanceArn',
                       'IamUserArn' => 'iamUserArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::InstanceInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::InstanceInfo object:

  $service_obj->Method(Att1 => { DeregisterTime => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::InstanceInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->DeregisterTime

=head1 DESCRIPTION

Information about an on-premises instance.

=head1 ATTRIBUTES


=head2 DeregisterTime => Str

  If the on-premises instance was deregistered, the time at which the
on-premises instance was deregistered.


=head2 IamSessionArn => Str

  The ARN of the IAM session associated with the on-premises instance.


=head2 IamUserArn => Str

  The IAM user ARN associated with the on-premises instance.


=head2 InstanceArn => Str

  The ARN of the on-premises instance.


=head2 InstanceName => Str

  The name of the on-premises instance.


=head2 RegisterTime => Str

  The time at which the on-premises instance was registered.


=head2 Tags => ArrayRef[CodeDeploy_Tag]

  The tags currently associated with the on-premises instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

