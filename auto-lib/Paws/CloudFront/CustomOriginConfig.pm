package Paws::CloudFront::CustomOriginConfig;
  use Moose;
  has HTTPPort => (is => 'ro', isa => 'Int', required => 1);
  has HTTPSPort => (is => 'ro', isa => 'Int', required => 1);
  has OriginProtocolPolicy => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CustomOriginConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CustomOriginConfig object:

  $service_obj->Method(Att1 => { HTTPPort => $value, ..., OriginProtocolPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CustomOriginConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->HTTPPort

=head1 DESCRIPTION

A customer origin.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HTTPPort => Int

  The HTTP port the custom origin listens on.


=head2 B<REQUIRED> HTTPSPort => Int

  The HTTPS port the custom origin listens on.


=head2 B<REQUIRED> OriginProtocolPolicy => Str

  The origin protocol policy to apply to your origin.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

