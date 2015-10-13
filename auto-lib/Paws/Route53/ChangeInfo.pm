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

This element contains an ID that you use when performing a GetChange
action to get detailed information about the change.

=head1 ATTRIBUTES

=head2 Comment => Str

  A complex type that describes change information about changes made to
your hosted zone.

This element contains an ID that you use when performing a GetChange
action to get detailed information about the change.

=head2 B<REQUIRED> Id => Str

  The ID of the request. Use this ID to track when the change has
completed across all Amazon Route 53 DNS servers.

=head2 B<REQUIRED> Status => Str

  The current state of the request. C<PENDING> indicates that this
request has not yet been applied to all Amazon Route 53 DNS servers.

Valid Values: C<PENDING> | C<INSYNC>

=head2 B<REQUIRED> SubmittedAt => Str

  The date and time the change was submitted, in the format
C<YYYY-MM-DDThh:mm:ssZ>, as specified in the ISO 8601 standard (for
example, 2009-11-19T19:37:58Z). The C<Z> after the time indicates that
the time is listed in Coordinated Universal Time (UTC), which is
synonymous with Greenwich Mean Time in this context.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

