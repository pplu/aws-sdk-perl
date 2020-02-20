package Paws::SecurityHub::AwsCloudFrontDistributionOrigins;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsCloudFrontDistributionOriginItem]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCloudFrontDistributionOrigins

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCloudFrontDistributionOrigins object:

  $service_obj->Method(Att1 => { Items => $value, ..., Items => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCloudFrontDistributionOrigins object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A complex type that contains information about origins and origin
groups for this distribution.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::SecurityHub::AwsCloudFrontDistributionOriginItem>]

  A complex type that contains origins or origin groups for this
distribution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

