package Paws::Route53::ChangeInfo;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has SubmittedAt => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ChangeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::ChangeInfo object:

  $service_obj->Method(Att1 => { Comment => $value, ..., SubmittedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::ChangeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Comment

=head1 DESCRIPTION

A complex type that describes change information about changes made to
your hosted zone.

=head1 ATTRIBUTES


=head2 Comment => Str

  A complex type that describes change information about changes made to
your hosted zone.

This element contains an ID that you use when performing a GetChange
action to get detailed information about the change.


=head2 B<REQUIRED> Id => Str

  The ID of the request.


=head2 B<REQUIRED> Status => Str

  The current state of the request. C<PENDING> indicates that this
request has not yet been applied to all Amazon Route 53 DNS servers.


=head2 B<REQUIRED> SubmittedAt => Str

  The date and time that the change request was submitted in ISO 8601
format (https://en.wikipedia.org/wiki/ISO_8601) and Coordinated
Universal Time (UTC). For example, the value
C<2017-03-27T17:48:16.751Z> represents March 27, 2017 at 17:48:16.751
UTC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

