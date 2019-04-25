package Paws::CloudFront::OriginGroup;
  use Moose;
  has FailoverCriteria => (is => 'ro', isa => 'Paws::CloudFront::OriginGroupFailoverCriteria', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Members => (is => 'ro', isa => 'Paws::CloudFront::OriginGroupMembers', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::OriginGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::OriginGroup object:

  $service_obj->Method(Att1 => { FailoverCriteria => $value, ..., Members => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::OriginGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->FailoverCriteria

=head1 DESCRIPTION

An origin group includes two origins (a primary origin and a second
origin to failover to) and a failover criteria that you specify. You
create an origin group to support origin failover in CloudFront. When
you create or update a distribution, you can specifiy the origin group
instead of a single origin, and CloudFront will failover from the
primary origin to the second origin under the failover conditions that
you've chosen.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailoverCriteria => L<Paws::CloudFront::OriginGroupFailoverCriteria>

  A complex type that contains information about the failover criteria
for an origin group.


=head2 B<REQUIRED> Id => Str

  The origin group's ID.


=head2 B<REQUIRED> Members => L<Paws::CloudFront::OriginGroupMembers>

  A complex type that contains information about the origins in an origin
group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

