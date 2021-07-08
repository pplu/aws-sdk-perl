
package Paws::FMS::DeleteProtocolsList;
  use Moose;
  has ListId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProtocolsList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::DeleteProtocolsList - Arguments for method DeleteProtocolsList on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProtocolsList on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method DeleteProtocolsList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProtocolsList.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    $fms->DeleteProtocolsList(
      ListId => 'MyListId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/DeleteProtocolsList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ListId => Str

The ID of the protocols list that you want to delete. You can retrieve
this ID from C<PutProtocolsList>, C<ListProtocolsLists>, and
C<GetProtocolsLost>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProtocolsList in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

