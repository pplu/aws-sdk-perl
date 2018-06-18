
package Paws::Lightsail::GetDisks;
  use Moose;
  has PageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pageToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDisks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetDisksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDisks - Arguments for method GetDisks on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDisks on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetDisks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDisks.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetDisksResult = $lightsail->GetDisks(
      PageToken => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $Disks         = $GetDisksResult->Disks;
    my $NextPageToken = $GetDisksResult->NextPageToken;

    # Returns a L<Paws::Lightsail::GetDisksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetDisks>

=head1 ATTRIBUTES


=head2 PageToken => Str

A token used for advancing to the next page of results from your
GetDisks request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDisks in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

