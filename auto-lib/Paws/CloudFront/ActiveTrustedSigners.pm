package Paws::CloudFront::ActiveTrustedSigners;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::Signer]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ActiveTrustedSigners

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::ActiveTrustedSigners object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::ActiveTrustedSigners object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 ATTRIBUTES

=head2 B<REQUIRED> Enabled => Bool

  

Each active trusted signer.










=head2 Items => ArrayRef[Paws::CloudFront::Signer]

  

A complex type that contains one Signer complex type for each unique
trusted signer that is specified in the TrustedSigners complex type,
including trusted signers in the default cache behavior and in all of
the other cache behaviors.










=head2 B<REQUIRED> Quantity => Int

  

The number of unique trusted signers included in all cache behaviors.
For example, if three cache behaviors all list the same three AWS
accounts, the value of Quantity for ActiveTrustedSigners will be 3.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

