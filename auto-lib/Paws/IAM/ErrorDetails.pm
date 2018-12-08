package Paws::IAM::ErrorDetails;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ErrorDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::ErrorDetails object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::ErrorDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Contains information about the reason that the operation failed.

This data type is used as a response element in the
GetServiceLastAccessedDetails operation and the
GetServiceLastAccessedDetailsWithEntities operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Code => Str

  The error code associated with the operation failure.


=head2 B<REQUIRED> Message => Str

  Detailed information about the reason that the operation failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

