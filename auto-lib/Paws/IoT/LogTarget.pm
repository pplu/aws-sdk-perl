package Paws::IoT::LogTarget;
  use Moose;
  has TargetName => (is => 'ro', isa => 'Str', request_name => 'targetName', traits => ['NameInRequest']);
  has TargetType => (is => 'ro', isa => 'Str', request_name => 'targetType', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::LogTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::LogTarget object:

  $service_obj->Method(Att1 => { TargetName => $value, ..., TargetType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::LogTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->TargetName

=head1 DESCRIPTION

A log target.

=head1 ATTRIBUTES


=head2 TargetName => Str

  The target name.


=head2 B<REQUIRED> TargetType => Str

  The target type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

