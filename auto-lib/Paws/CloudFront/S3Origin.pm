package Paws::CloudFront::S3Origin;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has OriginAccessIdentity => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::S3Origin

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::S3Origin object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., OriginAccessIdentity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::S3Origin object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 ATTRIBUTES

=head2 B<REQUIRED> DomainName => Str

  

The DNS name of the S3 origin.










=head2 B<REQUIRED> OriginAccessIdentity => Str

  

Your S3 origin's origin access identity.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

