
package Paws::DevOpsGuru::ListNotificationChannels;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNotificationChannels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::ListNotificationChannelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListNotificationChannels - Arguments for method ListNotificationChannels on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNotificationChannels on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method ListNotificationChannels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNotificationChannels.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $ListNotificationChannelsResponse =
      $devops -guru->ListNotificationChannels(
      NextToken => 'MyUuidNextToken',    # OPTIONAL
      );

    # Results:
    my $Channels  = $ListNotificationChannelsResponse->Channels;
    my $NextToken = $ListNotificationChannelsResponse->NextToken;

    # Returns a L<Paws::DevOpsGuru::ListNotificationChannelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/ListNotificationChannels>

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNotificationChannels in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

