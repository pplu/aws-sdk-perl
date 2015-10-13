package Paws::EMR::InstanceGroupModifyConfig;
  use Moose;
  has EC2InstanceIdsToTerminate => (is => 'ro', isa => 'ArrayRef[Str]');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceGroupId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceGroupModifyConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceGroupModifyConfig object:

  $service_obj->Method(Att1 => { EC2InstanceIdsToTerminate => $value, ..., InstanceGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceGroupModifyConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->EC2InstanceIdsToTerminate

=head1 DESCRIPTION

Modify an instance group size.

=head1 ATTRIBUTES

=head2 EC2InstanceIdsToTerminate => ArrayRef[Str]

  The EC2 InstanceIds to terminate. For advanced users only. Once you
terminate the instances, the instance group will not return to its
original requested size.

=head2 InstanceCount => Int

  Target size for the instance group.

=head2 B<REQUIRED> InstanceGroupId => Str

  Unique ID of the instance group to expand or shrink.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

