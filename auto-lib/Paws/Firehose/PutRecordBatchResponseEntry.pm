package Paws::Firehose::PutRecordBatchResponseEntry;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has RecordId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::PutRecordBatchResponseEntry

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::PutRecordBatchResponseEntry object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., RecordId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::PutRecordBatchResponseEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 ATTRIBUTES

=head2 ErrorCode => Str

  

The error code for an individual record result.










=head2 ErrorMessage => Str

  

The error message for an individual record result.










=head2 RecordId => Str

  

The ID of the record.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

