# Generated from default/object.tt
package Paws::IAM::DeletionTaskFailureReasonType;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IAM::Types qw/IAM_RoleUsageType/;
  has Reason => (is => 'ro', isa => Str);
  has RoleUsageList => (is => 'ro', isa => ArrayRef[IAM_RoleUsageType]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Reason' => {
                             'type' => 'Str'
                           },
               'RoleUsageList' => {
                                    'class' => 'Paws::IAM::RoleUsageType',
                                    'type' => 'ArrayRef[IAM_RoleUsageType]'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeletionTaskFailureReasonType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::DeletionTaskFailureReasonType object:

  $service_obj->Method(Att1 => { Reason => $value, ..., RoleUsageList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::DeletionTaskFailureReasonType object:

  $result = $service_obj->Method(...);
  $result->Att1->Reason

=head1 DESCRIPTION

The reason that the service-linked role deletion failed.

This data type is used as a response element in the
GetServiceLinkedRoleDeletionStatus operation.

=head1 ATTRIBUTES


=head2 Reason => Str

  A short description of the reason that the service-linked role deletion
failed.


=head2 RoleUsageList => ArrayRef[IAM_RoleUsageType]

  A list of objects that contains details about the service-linked role
deletion failure, if that information is returned by the service. If
the service-linked role has active sessions or if any resources that
were used by the role have not been deleted from the linked service,
the role can't be deleted. This parameter includes a list of the
resources that are associated with the role and the Region in which the
resources are being used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

