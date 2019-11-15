package Paws::DataExchange::JobError;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', required => 1);
  has Details => (is => 'ro', isa => 'Paws::DataExchange::Details');
  has LimitName => (is => 'ro', isa => 'Str');
  has LimitValue => (is => 'ro', isa => 'Num');
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::JobError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::JobError object:

  $service_obj->Method(Att1 => { Code => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::JobError object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

An error that occurred with the job request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Code => Str

  The code for the job error.


=head2 Details => L<Paws::DataExchange::Details>

  


=head2 LimitName => Str

  The name of the limit that was reached.


=head2 LimitValue => Num

  The value of the exceeded limit.


=head2 B<REQUIRED> Message => Str

  The message related to the job error.


=head2 ResourceId => Str

  The unqiue identifier for the resource related to the error.


=head2 ResourceType => Str

  The type of resource related to the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

