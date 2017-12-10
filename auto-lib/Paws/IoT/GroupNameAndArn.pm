package Paws::IoT::GroupNameAndArn;
  use Moose;
  has GroupArn => (is => 'ro', isa => 'Str', request_name => 'groupArn', traits => ['NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GroupNameAndArn

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::GroupNameAndArn object:

  $service_obj->Method(Att1 => { GroupArn => $value, ..., GroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::GroupNameAndArn object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupArn

=head1 DESCRIPTION

The name and ARN of a group.

=head1 ATTRIBUTES


=head2 GroupArn => Str

  The group ARN.


=head2 GroupName => Str

  The group name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

