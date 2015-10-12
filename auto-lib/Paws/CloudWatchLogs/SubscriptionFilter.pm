package Paws::CloudWatchLogs::SubscriptionFilter;
  use Moose;
  has creationTime => (is => 'ro', isa => 'Int');
  has destinationArn => (is => 'ro', isa => 'Str');
  has filterName => (is => 'ro', isa => 'Str');
  has filterPattern => (is => 'ro', isa => 'Str');
  has logGroupName => (is => 'ro', isa => 'Str');
  has roleArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::SubscriptionFilter

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::SubscriptionFilter object:

  $service_obj->Method(Att1 => { creationTime => $value, ..., roleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::SubscriptionFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->creationTime

=head1 ATTRIBUTES

=head2 creationTime => Int

  

=head2 destinationArn => Str

  

=head2 filterName => Str

  

=head2 filterPattern => Str

  

=head2 logGroupName => Str

  

=head2 roleArn => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

