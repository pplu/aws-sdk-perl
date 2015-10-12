package Paws::CloudFront::AllowedMethods;
  use Moose;
  has CachedMethods => (is => 'ro', isa => 'Paws::CloudFront::CachedMethods');
  has Items => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::AllowedMethods

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::AllowedMethods object:

  $service_obj->Method(Att1 => { CachedMethods => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::AllowedMethods object:

  $result = $service_obj->Method(...);
  $result->Att1->CachedMethods

=head1 ATTRIBUTES

=head2 CachedMethods => Paws::CloudFront::CachedMethods

  

=head2 B<REQUIRED> Items => ArrayRef[Str]

  

A complex type that contains the HTTP methods that you want CloudFront
to process and forward to your origin.










=head2 B<REQUIRED> Quantity => Int

  

The number of HTTP methods that you want CloudFront to forward to your
origin. Valid values are 2 (for GET and HEAD requests), 3 (for GET,
HEAD and OPTIONS requests) and 7 (for GET, HEAD, OPTIONS, PUT, PATCH,
POST, and DELETE requests).












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

