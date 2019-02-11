package Paws::DS::DirectoryLimits;
  use Moose;
  has CloudOnlyDirectoriesCurrentCount => (is => 'ro', isa => 'Int');
  has CloudOnlyDirectoriesLimit => (is => 'ro', isa => 'Int');
  has CloudOnlyDirectoriesLimitReached => (is => 'ro', isa => 'Bool');
  has CloudOnlyMicrosoftADCurrentCount => (is => 'ro', isa => 'Int');
  has CloudOnlyMicrosoftADLimit => (is => 'ro', isa => 'Int');
  has CloudOnlyMicrosoftADLimitReached => (is => 'ro', isa => 'Bool');
  has ConnectedDirectoriesCurrentCount => (is => 'ro', isa => 'Int');
  has ConnectedDirectoriesLimit => (is => 'ro', isa => 'Int');
  has ConnectedDirectoriesLimitReached => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DirectoryLimits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::DirectoryLimits object:

  $service_obj->Method(Att1 => { CloudOnlyDirectoriesCurrentCount => $value, ..., ConnectedDirectoriesLimitReached => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::DirectoryLimits object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudOnlyDirectoriesCurrentCount

=head1 DESCRIPTION

Contains directory limit information for a region.

=head1 ATTRIBUTES


=head2 CloudOnlyDirectoriesCurrentCount => Int

  The current number of cloud directories in the region.


=head2 CloudOnlyDirectoriesLimit => Int

  The maximum number of cloud directories allowed in the region.


=head2 CloudOnlyDirectoriesLimitReached => Bool

  Indicates if the cloud directory limit has been reached.


=head2 CloudOnlyMicrosoftADCurrentCount => Int

  The current number of AWS Managed Microsoft AD directories in the
region.


=head2 CloudOnlyMicrosoftADLimit => Int

  The maximum number of AWS Managed Microsoft AD directories allowed in
the region.


=head2 CloudOnlyMicrosoftADLimitReached => Bool

  Indicates if the AWS Managed Microsoft AD directory limit has been
reached.


=head2 ConnectedDirectoriesCurrentCount => Int

  The current number of connected directories in the region.


=head2 ConnectedDirectoriesLimit => Int

  The maximum number of connected directories allowed in the region.


=head2 ConnectedDirectoriesLimitReached => Bool

  Indicates if the connected directory limit has been reached.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

