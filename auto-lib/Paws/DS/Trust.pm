package Paws::DS::Trust;
  use Moose;
  has CreatedDateTime => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str');
  has RemoteDomainName => (is => 'ro', isa => 'Str');
  has SelectiveAuth => (is => 'ro', isa => 'Str');
  has StateLastUpdatedDateTime => (is => 'ro', isa => 'Str');
  has TrustDirection => (is => 'ro', isa => 'Str');
  has TrustId => (is => 'ro', isa => 'Str');
  has TrustState => (is => 'ro', isa => 'Str');
  has TrustStateReason => (is => 'ro', isa => 'Str');
  has TrustType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::Trust

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::Trust object:

  $service_obj->Method(Att1 => { CreatedDateTime => $value, ..., TrustType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::Trust object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDateTime

=head1 DESCRIPTION

Describes a trust relationship between an AWS Managed Microsoft AD
directory and an external domain.

=head1 ATTRIBUTES


=head2 CreatedDateTime => Str

  The date and time that the trust relationship was created.


=head2 DirectoryId => Str

  The Directory ID of the AWS directory involved in the trust
relationship.


=head2 LastUpdatedDateTime => Str

  The date and time that the trust relationship was last updated.


=head2 RemoteDomainName => Str

  The Fully Qualified Domain Name (FQDN) of the external domain involved
in the trust relationship.


=head2 SelectiveAuth => Str

  Current state of selective authentication for the trust.


=head2 StateLastUpdatedDateTime => Str

  The date and time that the TrustState was last updated.


=head2 TrustDirection => Str

  The trust relationship direction.


=head2 TrustId => Str

  The unique ID of the trust relationship.


=head2 TrustState => Str

  The trust relationship state.


=head2 TrustStateReason => Str

  The reason for the TrustState.


=head2 TrustType => Str

  The trust relationship type. C<Forest> is the default.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

