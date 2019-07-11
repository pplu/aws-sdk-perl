package Paws::MediaPackageVod::PackagingGroupList;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest']);
  has PackagingGroups => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageVod::PackagingGroup]', request_name => 'packagingGroups', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::PackagingGroupList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::PackagingGroupList object:

  $service_obj->Method(Att1 => { NextToken => $value, ..., PackagingGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::PackagingGroupList object:

  $result = $service_obj->Method(...);
  $result->Att1->NextToken

=head1 DESCRIPTION

A collection of MediaPackage VOD PackagingGroup resources.

=head1 ATTRIBUTES


=head2 NextToken => Str

  A token that can be used to resume pagination from the end of the
collection.


=head2 PackagingGroups => ArrayRef[L<Paws::MediaPackageVod::PackagingGroup>]

  A list of MediaPackage VOD PackagingGroup resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

