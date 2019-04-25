package Paws::CloudFront::OriginGroupFailoverCriteria;
  use Moose;
  has StatusCodes => (is => 'ro', isa => 'Paws::CloudFront::StatusCodes', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::OriginGroupFailoverCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::OriginGroupFailoverCriteria object:

  $service_obj->Method(Att1 => { StatusCodes => $value, ..., StatusCodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::OriginGroupFailoverCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->StatusCodes

=head1 DESCRIPTION

A complex data type that includes information about the failover
criteria for an origin group, including the status codes for which
CloudFront will failover from the primary origin to the second origin.

=head1 ATTRIBUTES


=head2 B<REQUIRED> StatusCodes => L<Paws::CloudFront::StatusCodes>

  The status codes that, when returned from the primary origin, will
trigger CloudFront to failover to the second origin.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

