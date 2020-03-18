package Paws::DataExchange::Details;
  use Moose;
  has ImportAssetFromSignedUrlJobErrorDetails => (is => 'ro', isa => 'Paws::DataExchange::ImportAssetFromSignedUrlJobErrorDetails');
  has ImportAssetsFromS3JobErrorDetails => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::AssetSourceEntry]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::Details

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::Details object:

  $service_obj->Method(Att1 => { ImportAssetFromSignedUrlJobErrorDetails => $value, ..., ImportAssetsFromS3JobErrorDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::Details object:

  $result = $service_obj->Method(...);
  $result->Att1->ImportAssetFromSignedUrlJobErrorDetails

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ImportAssetFromSignedUrlJobErrorDetails => L<Paws::DataExchange::ImportAssetFromSignedUrlJobErrorDetails>

  


=head2 ImportAssetsFromS3JobErrorDetails => ArrayRef[L<Paws::DataExchange::AssetSourceEntry>]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

