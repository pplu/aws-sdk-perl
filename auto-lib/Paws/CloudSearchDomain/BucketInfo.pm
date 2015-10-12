package Paws::CloudSearchDomain::BucketInfo;
  use Moose;
  has buckets => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearchDomain::Bucket]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::BucketInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::BucketInfo object:

  $service_obj->Method(Att1 => { buckets => $value, ..., buckets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::BucketInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->buckets

=head1 ATTRIBUTES

=head2 buckets => ArrayRef[Paws::CloudSearchDomain::Bucket]

  

A list of the calculated facet values and counts.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

