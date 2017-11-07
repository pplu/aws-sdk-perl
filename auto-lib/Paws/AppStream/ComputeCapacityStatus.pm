package Paws::AppStream::ComputeCapacityStatus;
  use Moose;
  has Available => (is => 'ro', isa => 'Int');
  has Desired => (is => 'ro', isa => 'Int', required => 1);
  has InUse => (is => 'ro', isa => 'Int');
  has Running => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ComputeCapacityStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::ComputeCapacityStatus object:

  $service_obj->Method(Att1 => { Available => $value, ..., Running => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::ComputeCapacityStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Available

=head1 DESCRIPTION

Describes the capacity status for a fleet.

=head1 ATTRIBUTES


=head2 Available => Int

  The number of currently available instances that can be used to stream
sessions.


=head2 B<REQUIRED> Desired => Int

  The desired number of streaming instances.


=head2 InUse => Int

  The number of instances in use for streaming.


=head2 Running => Int

  The total number of simultaneous streaming instances that are running.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

