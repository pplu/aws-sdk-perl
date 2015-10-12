package Paws::CloudWatchLogs::MetricFilterMatchRecord;
  use Moose;
  has eventMessage => (is => 'ro', isa => 'Str');
  has eventNumber => (is => 'ro', isa => 'Int');
  has extractedValues => (is => 'ro', isa => 'Paws::CloudWatchLogs::ExtractedValues');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::MetricFilterMatchRecord

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::MetricFilterMatchRecord object:

  $service_obj->Method(Att1 => { eventMessage => $value, ..., extractedValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::MetricFilterMatchRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->eventMessage

=head1 ATTRIBUTES

=head2 eventMessage => Str

  

=head2 eventNumber => Int

  

=head2 extractedValues => L<Paws::CloudWatchLogs::ExtractedValues>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

