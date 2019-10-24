# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::GetSystemTemplate;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTThingsGraph::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RevisionNumber => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetSystemTemplate');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::GetSystemTemplateResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'RevisionNumber' => {
                                     'type' => 'Int'
                                   }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'RevisionNumber' => 'revisionNumber'
                     },
  'IsRequired' => {
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetSystemTemplate - Arguments for method GetSystemTemplate on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSystemTemplate on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method GetSystemTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSystemTemplate.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $GetSystemTemplateResponse = $iotthingsgraph->GetSystemTemplate(
      Id             => 'MyUrn',
      RevisionNumber => 1,         # OPTIONAL
    );

    # Results:
    my $Description = $GetSystemTemplateResponse->Description;

    # Returns a L<Paws::IoTThingsGraph::GetSystemTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/GetSystemTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the system to get. This ID must be in the user's namespace.

The ID should be in the following format.

C<urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME>



=head2 RevisionNumber => Int

The number that specifies the revision of the system to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSystemTemplate in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

