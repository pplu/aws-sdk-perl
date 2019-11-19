
package Paws::IoT::DeleteMitigationAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ActionName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteMitigationAction');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/mitigationactions/actions/{actionName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::DeleteMitigationActionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActionName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'ActionName' => 1
                  },
  'ParamInURI' => {
                    'ActionName' => 'actionName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteMitigationAction - Arguments for method DeleteMitigationAction on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMitigationAction on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteMitigationAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMitigationAction.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteMitigationActionResponse = $iot->DeleteMitigationAction(
      ActionName => 'MyMitigationActionName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteMitigationAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

The name of the mitigation action that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMitigationAction in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

