package Paws::DS::LogSubscription;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has LogGroupName => (is => 'ro', isa => 'Str');
  has SubscriptionCreatedDateTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::LogSubscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::LogSubscription object:

  $service_obj->Method(Att1 => { DirectoryId => $value, ..., SubscriptionCreatedDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::LogSubscription object:

  $result = $service_obj->Method(...);
  $result->Att1->DirectoryId

=head1 DESCRIPTION

Represents a log subscription, which tracks real-time data from a
chosen log group to a specified destination.

=head1 ATTRIBUTES


=head2 DirectoryId => Str

  Identifier (ID) of the directory that you want to associate with the
log subscription.


=head2 LogGroupName => Str

  The name of the log group.


=head2 SubscriptionCreatedDateTime => Str

  The date and time that the log subscription was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

