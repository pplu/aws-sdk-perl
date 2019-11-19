
package Paws::IoT::DescribeMitigationAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ActionName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeMitigationAction');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/mitigationactions/actions/{actionName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::DescribeMitigationActionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ActionName' => 'actionName'
                  },
  'types' => {
               'ActionName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'ActionName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeMitigationAction - Arguments for method DescribeMitigationAction on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMitigationAction on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeMitigationAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMitigationAction.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeMitigationActionResponse = $iot->DescribeMitigationAction(
      ActionName => 'MyMitigationActionName',

    );

    # Results:
    my $ActionArn        = $DescribeMitigationActionResponse->ActionArn;
    my $ActionId         = $DescribeMitigationActionResponse->ActionId;
    my $ActionName       = $DescribeMitigationActionResponse->ActionName;
    my $ActionParams     = $DescribeMitigationActionResponse->ActionParams;
    my $ActionType       = $DescribeMitigationActionResponse->ActionType;
    my $CreationDate     = $DescribeMitigationActionResponse->CreationDate;
    my $LastModifiedDate = $DescribeMitigationActionResponse->LastModifiedDate;
    my $RoleArn          = $DescribeMitigationActionResponse->RoleArn;

    # Returns a L<Paws::IoT::DescribeMitigationActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeMitigationAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

The friendly name that uniquely identifies the mitigation action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMitigationAction in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

