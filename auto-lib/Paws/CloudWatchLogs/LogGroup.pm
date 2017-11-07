package Paws::CloudWatchLogs::LogGroup;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Int', request_name => 'creationTime', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest']);
  has LogGroupName => (is => 'ro', isa => 'Str', request_name => 'logGroupName', traits => ['NameInRequest']);
  has MetricFilterCount => (is => 'ro', isa => 'Int', request_name => 'metricFilterCount', traits => ['NameInRequest']);
  has RetentionInDays => (is => 'ro', isa => 'Int', request_name => 'retentionInDays', traits => ['NameInRequest']);
  has StoredBytes => (is => 'ro', isa => 'Int', request_name => 'storedBytes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::LogGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::LogGroup object:

  $service_obj->Method(Att1 => { Arn => $value, ..., StoredBytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::LogGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents a log group.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the log group.


=head2 CreationTime => Int

  The creation time of the log group, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC.


=head2 KmsKeyId => Str

  The Amazon Resource Name (ARN) of the CMK to use when encrypting log
data.


=head2 LogGroupName => Str

  The name of the log group.


=head2 MetricFilterCount => Int

  The number of metric filters.


=head2 RetentionInDays => Int

  


=head2 StoredBytes => Int

  The number of bytes stored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

