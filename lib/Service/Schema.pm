package Service::Schema;

use strict;
use warnings;

# DBIx::Class is an ORM style library for Perl, it will look for
# "Results" and "ResultSets" in lib/Service/Schema/Result and lib/Service/Schema/ResultSet
# See: https://github.com/mollusc-labs/clark/tree/main/lib/Clark/Schema for an example.

# If you're not using a Database for this service, delete this file, and update the `cpanfile`
# to not use any DBI, DBD, or DBIx dependencies.
use base 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces;

1;
