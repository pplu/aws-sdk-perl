package Paws::CloudWatch::PartialFailure;
  use Moose;
  has ExceptionType => (is => 'ro', isa => 'Str');
  has FailureCode => (is => 'ro', isa => 'Str');
  has FailureDescription => (is => 'ro', isa => 'Str');
  has FailureResource => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PartialFailure

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::PartialFailure object:

  $service_obj->Method(Att1 => { ExceptionType => $value, ..., FailureResource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::PartialFailure object:

  $result = $service_obj->Method(...);
  $result->Att1->ExceptionType

=head1 DESCRIPTION

This array is empty if the API operation was successful for all the
rules specified in the request. If the operation could not process one
of the rules, the following data is returned for each of those rules.

=head1 ATTRIBUTES


=head2 ExceptionType => Str

  The type of error.


=head2 FailureCode => Str

  The code of the error.


=head2 FailureDescription => Str

  A description of the error.


=head2 FailureResource => Str

  The specified rule that could not be deleted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

