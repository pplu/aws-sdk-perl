
package Paws::Chime::ListAppInstanceAdmins;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAppInstanceAdmins');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances/{appInstanceArn}/admins');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListAppInstanceAdminsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListAppInstanceAdmins - Arguments for method ListAppInstanceAdmins on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAppInstanceAdmins on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListAppInstanceAdmins.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAppInstanceAdmins.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListAppInstanceAdminsResponse = $chime->ListAppInstanceAdmins(
      AppInstanceArn => 'MyChimeArn',
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AppInstanceAdmins = $ListAppInstanceAdminsResponse->AppInstanceAdmins;
    my $AppInstanceArn    = $ListAppInstanceAdminsResponse->AppInstanceArn;
    my $NextToken         = $ListAppInstanceAdminsResponse->NextToken;

    # Returns a L<Paws::Chime::ListAppInstanceAdminsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListAppInstanceAdmins>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance>.



=head2 MaxResults => Int

The maximum number of administrators that you want to return.



=head2 NextToken => Str

The token returned from previous API requests until the number of
administrators is reached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAppInstanceAdmins in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

