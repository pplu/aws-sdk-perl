package Paws::CloudWatchLogs::LogStream;
  use Moose;
  has arn => (is => 'ro', isa => 'Str');
  has creationTime => (is => 'ro', isa => 'Int');
  has firstEventTimestamp => (is => 'ro', isa => 'Int');
  has lastEventTimestamp => (is => 'ro', isa => 'Int');
  has lastIngestionTime => (is => 'ro', isa => 'Int');
  has logStreamName => (is => 'ro', isa => 'Str');
  has storedBytes => (is => 'ro', isa => 'Int');
  has uploadSequenceToken => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::LogStream

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::LogStream object:

  $service_obj->Method(Att1 => { arn => $value, ..., uploadSequenceToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::LogStream object:

  $result = $service_obj->Method(...);
  $result->Att1->arn

=head1 ATTRIBUTES

=head2 arn => Str

  

=head2 creationTime => Int

  

=head2 firstEventTimestamp => Int

  

=head2 lastEventTimestamp => Int

  

=head2 lastIngestionTime => Int

  

=head2 logStreamName => Str

  

=head2 storedBytes => Int

  

=head2 uploadSequenceToken => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

