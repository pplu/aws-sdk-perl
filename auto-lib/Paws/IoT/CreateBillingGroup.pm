
package Paws::IoT::CreateBillingGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_Tag IoT_BillingGroupProperties/;
  has BillingGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BillingGroupProperties => (is => 'ro', isa => IoT_BillingGroupProperties, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[IoT_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateBillingGroup');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/billing-groups/{billingGroupName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::CreateBillingGroupResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BillingGroupProperties' => 'billingGroupProperties',
                       'Tags' => 'tags'
                     },
  'IsRequired' => {
                    'BillingGroupName' => 1
                  },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::IoT::Tag',
                           'type' => 'ArrayRef[IoT_Tag]'
                         },
               'BillingGroupProperties' => {
                                             'type' => 'IoT_BillingGroupProperties',
                                             'class' => 'Paws::IoT::BillingGroupProperties'
                                           },
               'BillingGroupName' => {
                                       'type' => 'Str'
                                     }
             },
  'ParamInURI' => {
                    'BillingGroupName' => 'billingGroupName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateBillingGroup - Arguments for method CreateBillingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBillingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateBillingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBillingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateBillingGroupResponse = $iot->CreateBillingGroup(
      BillingGroupName       => 'MyBillingGroupName',
      BillingGroupProperties => {
        BillingGroupDescription =>
          'MyBillingGroupDescription',    # max: 2028; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $BillingGroupArn  = $CreateBillingGroupResponse->BillingGroupArn;
    my $BillingGroupId   = $CreateBillingGroupResponse->BillingGroupId;
    my $BillingGroupName = $CreateBillingGroupResponse->BillingGroupName;

    # Returns a L<Paws::IoT::CreateBillingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateBillingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillingGroupName => Str

The name you wish to give to the billing group.



=head2 BillingGroupProperties => IoT_BillingGroupProperties

The properties of the billing group.



=head2 Tags => ArrayRef[IoT_Tag]

Metadata which can be used to manage the billing group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBillingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

