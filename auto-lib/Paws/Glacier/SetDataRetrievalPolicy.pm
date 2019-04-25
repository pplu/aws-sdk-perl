
package Paws::Glacier::SetDataRetrievalPolicy;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Policy => (is => 'ro', isa => 'Paws::Glacier::DataRetrievalPolicy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetDataRetrievalPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/policies/data-retrieval');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::SetDataRetrievalPolicy - Arguments for method SetDataRetrievalPolicy on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetDataRetrievalPolicy on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method SetDataRetrievalPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetDataRetrievalPolicy.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To set and then enact a data retrieval policy
    # The example sets and then enacts a data retrieval policy.
    $glacier->SetDataRetrievalPolicy(
      {
        'Policy' => {
          'Rules' => [

            {
              'BytesPerHour' => 10737418240,
              'Strategy'     => 'BytesPerHour'
            }
          ]
        },
        'AccountId' => '-'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/SetDataRetrievalPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID. This value must match the
AWS account ID associated with the credentials used to sign the
request. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you specify your account ID, do not include any hyphens ('-') in the
ID.



=head2 Policy => L<Paws::Glacier::DataRetrievalPolicy>

The data retrieval policy in JSON format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetDataRetrievalPolicy in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

