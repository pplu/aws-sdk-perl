package Paws::KinesisAnalyticsV2::KinesisStreamsOutputDescription;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::KinesisStreamsOutputDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::KinesisStreamsOutputDescription object:

  $service_obj->Method(Att1 => { ResourceARN => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::KinesisStreamsOutputDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceARN

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application's output,
describes the Kinesis data stream that is configured as its
destination.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

  The Amazon Resource Name (ARN) of the Kinesis data stream.


=head2 RoleARN => Str

  The ARN of the IAM role that Kinesis Data Analytics can assume to
access the stream.

Provided for backward compatibility. Applications that are created with
the current API version have an application-level service execution
role rather than a resource-level role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

