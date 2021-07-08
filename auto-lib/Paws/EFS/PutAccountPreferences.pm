
package Paws::EFS::PutAccountPreferences;
  use Moose;
  has ResourceIdType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccountPreferences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/account-preferences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::PutAccountPreferencesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::PutAccountPreferences - Arguments for method PutAccountPreferences on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccountPreferences on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method PutAccountPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccountPreferences.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $PutAccountPreferencesResponse =
      $elasticfilesystem->PutAccountPreferences(
      ResourceIdType => 'LONG_ID',

      );

    # Results:
    my $ResourceIdPreference =
      $PutAccountPreferencesResponse->ResourceIdPreference;

    # Returns a L<Paws::EFS::PutAccountPreferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/PutAccountPreferences>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceIdType => Str



Valid values are: C<"LONG_ID">, C<"SHORT_ID">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccountPreferences in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

