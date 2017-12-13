package Paws::WorkMail::BookingOptions;
  use Moose;
  has AutoAcceptRequests => (is => 'ro', isa => 'Bool');
  has AutoDeclineConflictingRequests => (is => 'ro', isa => 'Bool');
  has AutoDeclineRecurringRequests => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::BookingOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkMail::BookingOptions object:

  $service_obj->Method(Att1 => { AutoAcceptRequests => $value, ..., AutoDeclineRecurringRequests => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkMail::BookingOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoAcceptRequests

=head1 DESCRIPTION

At least one delegate must be associated to the resource to disable
automatic replies from the resource.

=head1 ATTRIBUTES


=head2 AutoAcceptRequests => Bool

  The resource's ability to automatically reply to requests. If disabled,
delegates must be associated to the resource.


=head2 AutoDeclineConflictingRequests => Bool

  The resource's ability to automatically decline any conflicting
requests.


=head2 AutoDeclineRecurringRequests => Bool

  The resource's ability to automatically decline any recurring requests.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

