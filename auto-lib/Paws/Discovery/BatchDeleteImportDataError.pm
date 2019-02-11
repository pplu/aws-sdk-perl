package Paws::Discovery::BatchDeleteImportDataError;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str', request_name => 'errorCode', traits => ['NameInRequest']);
  has ErrorDescription => (is => 'ro', isa => 'Str', request_name => 'errorDescription', traits => ['NameInRequest']);
  has ImportTaskId => (is => 'ro', isa => 'Str', request_name => 'importTaskId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::BatchDeleteImportDataError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::BatchDeleteImportDataError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., ImportTaskId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::BatchDeleteImportDataError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Error messages returned for each import task that you deleted as a
response for this command.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The type of error that occurred for a specific import task.


=head2 ErrorDescription => Str

  The description of the error that occurred for a specific import task.


=head2 ImportTaskId => Str

  The unique import ID associated with the error that occurred.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

