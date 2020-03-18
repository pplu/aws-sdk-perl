package Paws::MediaPackageVod::AssetList;
  use Moose;
  has Assets => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageVod::AssetShallow]', request_name => 'assets', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::AssetList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::AssetList object:

  $service_obj->Method(Att1 => { Assets => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::AssetList object:

  $result = $service_obj->Method(...);
  $result->Att1->Assets

=head1 DESCRIPTION

A collection of MediaPackage VOD Asset resources.

=head1 ATTRIBUTES


=head2 Assets => ArrayRef[L<Paws::MediaPackageVod::AssetShallow>]

  A list of MediaPackage VOD Asset resources.


=head2 NextToken => Str

  A token that can be used to resume pagination from the end of the
collection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

